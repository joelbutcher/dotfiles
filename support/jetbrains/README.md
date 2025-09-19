# Lovelace JetBrains Theme

A beautiful dark theme for JetBrains IDEs based on the Lovelace terminal color scheme, featuring purple accents and a cohesive color palette.

## Installation

### Method 1: Manual Installation

1. Copy the `Lovelace.icls` file to your JetBrains IDE's color schemes directory:

   **macOS:**
   ```bash
   cp Lovelace.icls ~/Library/Application\ Support/JetBrains/IntelliJIdea2025.2/colors/
   # Or for other IDEs:
   # ~/Library/Application Support/JetBrains/PhpStorm2025.2/colors/
   # ~/Library/Application Support/JetBrains/WebStorm2025.2/colors/
   # ~/Library/Application Support/JetBrains/PyCharm2025.2/colors/
   ```

   **Windows:**
   ```cmd
   copy Lovelace.icls %APPDATA%\JetBrains\IntelliJIdea2025.2\colors\
   ```

   **Linux:**
   ```bash
   cp Lovelace.icls ~/.config/JetBrains/IntelliJIdea2025.2/colors/
   ```

2. Restart your JetBrains IDE

3. Go to **Settings/Preferences** → **Editor** → **Color Scheme**

4. Select "Lovelace" from the dropdown

### Method 2: Import via Settings

1. Open your JetBrains IDE
2. Go to **Settings/Preferences** → **Editor** → **Color Scheme**
3. Click the gear icon ⚙️ next to the scheme dropdown
4. Select **Import Scheme...**
5. Choose the `Lovelace.icls` file
6. The theme will be imported and automatically selected

## Color Palette

The Lovelace theme uses the following color scheme:

- **Background**: `#1d1f28` - Deep dark purple-gray
- **Foreground**: `#fdfdfd` - Near white
- **Accent/Cursor**: `#c574dd` - Vibrant purple
- **Comments**: `#8897f4` - Soft blue
- **Keywords**: `#b043d1` - Purple
- **Strings**: `#5adecd` - Cyan-green
- **Numbers**: `#f2a272` - Orange
- **Functions**: `#556fff` - Blue
- **Classes**: `#18e3c8` - Bright cyan
- **Parameters**: `#79e6f3` - Light cyan
- **Errors**: `#ff4971` - Red
- **Warnings**: `#ff8037` - Orange

## Features

- **Consistent with terminal themes**: Matches the Lovelace iTerm and Warp themes
- **Eye-friendly**: Dark background reduces eye strain
- **Syntax highlighting**: Comprehensive color coding for multiple languages
- **UI integration**: Consistent colors across editor, gutter, and UI elements
- **Language support**: Optimized for Java, JavaScript, TypeScript, Python, PHP, XML, YAML, Markdown, and more

## Compatibility

This theme is compatible with all JetBrains IDEs including:
- IntelliJ IDEA
- PhpStorm
- WebStorm
- PyCharm
- RubyMine
- CLion
- DataGrip
- GoLand
- Rider
- Android Studio

## Troubleshooting

If the theme doesn't appear:
1. Make sure you placed the file in the correct directory for your IDE and version
2. Restart the IDE completely
3. Check that the file has the correct `.icls` extension
4. Verify the IDE version matches the directory path

## Customization

You can further customize the theme by:
1. Going to **Settings/Preferences** → **Editor** → **Color Scheme**
2. Selecting "Lovelace"
3. Expanding the categories on the left to modify specific colors
4. Clicking **Save As...** to create your own variant
