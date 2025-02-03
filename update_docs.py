import os
import json
import requests
from pathlib import Path
import sys
import anthropic

CLAUDE_API_KEY = os.getenv("CLAUDE_API_KEY")
DOCS_PATH = Path("/Users/williambremer/Downloads/pic_docs/pictastic-docs/docs")


def generate_section_content(section: str, feature: str) -> str:
    client = anthropic.Anthropic(api_key=CLAUDE_API_KEY)

    try:
        message = client.messages.create(
            model="claude-3-5-sonnet-20241022",
            max_tokens=1000,
            temperature=0.7,
            system="You are writing technical documentation for Pictastic.ai, a real estate media management and virtual staging platform.",
            messages=[
                {
                    "role": "user",
                    "content": [
                        {
                            "type": "text",
                            "text": f"""Write documentation for the {section}/{feature} section, including:
1. Feature Overview
2. Key Functionality
3. Usage Instructions
4. Best Practices
5. Technical Details

Write in markdown format. Be specific and practical.""",
                        }
                    ],
                }
            ],
        )

        return message.content[0].text

    except Exception as e:
        print(f"Error generating content for {section}/{feature}: {str(e)}")
        return generate_markdown_fallback(section, feature)


def generate_markdown_fallback(section: str, feature: str) -> str:
    return f"""# {feature.title()}

## Overview
[Feature overview for {section}/{feature} will be added here]

## Key Functionality
[Key functionality details will be added here]

## Usage Instructions
[Step-by-step usage instructions will be added here]

## Best Practices
[Best practices will be added here]

## Technical Details
[Technical specifications and limitations will be added here]
"""


def update_docs():
    sections = {
        "getting-started": ["overview"],
        "media": ["overview", "upload-organization", "storage"],
        "virtual-staging": [
            "overview",
            "creating-designs",
            "design-styles",
            "credits-pricing",
        ],
        "albums": ["overview", "creating-albums", "sharing", "managing-content"],
        "project-sites": [
            "overview",
            "creating-sites",
            "property-websites",
            "customization",
        ],
        "customization": ["themes", "interface", "branding"],
        "account": ["profile", "subscription", "custom-domain"],
        "system": ["trash", "storage", "specs"],
    }

    for section, features in sections.items():
        section_path = DOCS_PATH / section
        section_path.mkdir(exist_ok=True)

        for feature in features:
            file_path = section_path / f"{feature}.md"
            content = generate_section_content(section, feature)

            with open(file_path, "w") as f:
                f.write(content)

            print(f"Updated {section}/{feature}.md")


if __name__ == "__main__":
    if not CLAUDE_API_KEY:
        print("Please set CLAUDE_API_KEY environment variable")
        sys.exit(1)

    if not DOCS_PATH.exists():
        print(f"Docs path not found: {DOCS_PATH}")
        sys.exit(1)

    update_docs()
