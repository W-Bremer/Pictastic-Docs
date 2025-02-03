# Customization & Themes Documentation

## Feature Overview
The Customization & Themes system in Pictastic.ai allows users to create, manage, and apply consistent visual styles across their real estate media projects. Users can customize colors, fonts, watermarks, and branding elements to maintain brand consistency across virtual staging and property presentations.

## Key Functionality
- **Theme Presets**: Pre-defined style combinations for quick application
- **Custom Theme Creation**: Build and save personalized themes
- **Branding Elements**: Upload and manage logos, watermarks, and brand assets
- **Color Schemes**: Define primary, secondary, and accent colors
- **Typography Settings**: Set font families and styles for different content types
- **Export/Import**: Share themes across team members or projects

## Usage Instructions

### Creating a New Theme
1. Navigate to Settings > Themes
2. Click "Create New Theme"
3. Enter theme name and description
4. Configure the following elements:
   - Color palette
   - Typography
   - Logo placement
   - Watermark settings
5. Click "Save Theme"

### Applying Themes
1. Open your project
2. Select "Theme" from the toolbar
3. Choose from:
   - Saved themes
   - System presets
   - Recently used
4. Click "Apply Theme"

### Managing Brand Assets
1. Go to Settings > Brand Assets
2. Upload your assets:
   - Company logo (PNG/SVG, max 5MB)
   - Watermark (PNG with transparency)
   - Custom fonts (TTF/OTF format)
3. Set default positions and scaling

## Best Practices

### Theme Organization
- Use descriptive names for themes (e.g., "Luxury Properties Dark Mode")
- Create separate themes for different property types
- Document color codes and font choices
- Regular backup of custom themes

### Performance Optimization
- Keep image assets under 2MB
- Use vector formats (SVG) for logos when possible
- Limit custom font usage to 3 fonts per theme
- Compress images before uploading

### Brand Consistency
- Maintain consistent color schemes across themes
- Use standard logo positions
- Define clear typography hierarchies
- Document brand guidelines within theme descriptions

## Technical Details

### Supported Formats
- Images: PNG, JPG, SVG
- Fonts: TTF, OTF, WOFF2
- Color formats: HEX, RGB, RGBA

### Theme Structure
```json
{
  "themeId": "string",
  "name": "string",
  "colors": {
    "primary": "#HEXCODE",
    "secondary": "#HEXCODE",
    "accent": "#HEXCODE"
  },
  "typography": {
    "headings": {
      "fontFamily": "string",
      "fontSize": "number",
      "fontWeight": "number"
    },
    "body": {
      "fontFamily": "string",
      "fontSize": "number"
    }
  },
  "branding": {
    "logo": {
      "url": "string",
      "position": "string",
      "scale": "number"
    },
    "watermark": {
      "url": "string",
      "opacity": "number"
    }
  }
}
```

### Size Limitations
- Maximum logo size: 5MB
- Maximum watermark size: 2MB
- Maximum custom fonts: 3 per theme
- Maximum themes per account: 50

### Cache Management
- Themes are cached locally
- Asset CDN delivery
- Automatic sync across devices
- Version control for theme updates

### API Integration
```javascript
// Apply theme to project
POST /api/v1/projects/{projectId}/theme
{
  "themeId": "theme_uuid",
  "customizations": {}
}

// Create new theme
POST /api/v1/themes
{
  "name": "Theme Name",
  "settings": {}
}
```

Remember to regularly update themes and assets to ensure optimal performance and consistency across your real estate media projects.