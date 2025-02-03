#!/usr/bin/env python3
import os
import re

# This regex looks for a block starting at a line that begins with "Technical Details¶"
# and continues (including newlines) until it reaches "For detailed API documentation and advanced features, please visit our Developer Portal."
# The (?ms) flags allow multi-line (so ^ and $ match at line breaks) and dot-all mode.
pattern = re.compile(
    r"(?ms)^Technical Details¶\n.*?For detailed API documentation and advanced features, please visit our Developer Portal\.",
    re.DOTALL,
)


def remove_technical_block_from_file(filepath):
    with open(filepath, "r", encoding="utf-8") as f:
        content = f.read()
    new_content, num_subs = pattern.subn("", content)
    if num_subs > 0:
        print(
            f"Removed technical block from {filepath} ({num_subs} occurrence(s) removed)."
        )
        with open(filepath, "w", encoding="utf-8") as f:
            f.write(new_content)


def process_markdown_files(root_dir):
    for dirpath, dirnames, filenames in os.walk(root_dir):
        for filename in filenames:
            if filename.lower().endswith(".md"):
                file_path = os.path.join(dirpath, filename)
                remove_technical_block_from_file(file_path)


if __name__ == "__main__":
    # Adjust this if your markdown files are in a different folder
    docs_directory = "docs"
    process_markdown_files(docs_directory)
    print("Processing complete.")
