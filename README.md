# RepoDiffMatch

A powerful command-line tool to compare GitHub repositories and detect potential plagiarism by analyzing source code similarities.

## Features

- Compare any two public GitHub repositories
- Analyze multiple source code formats (JS, TS, Python, Java, C++, C#, PHP, Ruby, Go, Rust)
- Smart code normalization (removes comments, whitespace, formatting)
- Advanced similarity calculation using Levenshtein distance algorithm
- Color-coded similarity reports with visual indicators
- Automated plagiarism risk assessment
- GitHub API integration with rate limit handling

## Quick Start

### Installation

1. **Clone the repository:**
```bash
git clone https://github.com/tungle2709/repo-compare.git
cd repo-compare
```

2. **Install dependencies:**
```bash
npm install
```

3. **Make globally available (optional):**
```bash
npm link
```

### Basic Usage

```bash
# Direct execution
repodm compare owner1/repo1 owner2/repo2

# Examples
repodm compare facebook/react preactjs/preact
repodm compare expressjs/express koajs/koa
repodm compare microsoft/vscode atom/atom
```

## Authentication (Recommended)

Set up GitHub token for higher API rate limits:

```bash
# Linux/macOS
export GITHUB_TOKEN=your_github_token_here

# Windows
set GITHUB_TOKEN=your_github_token_here
```

**To get a GitHub token:**
1. Go to GitHub Settings → Developer settings → Personal access tokens
2. Generate new token (classic)
3. Select "public_repo" scope
4. Copy the token

## Understanding Results

### Similarity Levels
- **>90%**: High plagiarism risk
- **80-90%**: Moderate similarity 
- **70-80%**: Low-moderate similarity
- **<70%**: Minimal similarity (not displayed)

### Sample Output
```
Comparing repositories:
  Source: facebook/react
  Target: preactjs/preact

Similarity Report

85.2% similarity
  src/component.js ↔ src/component/index.js

78.9% similarity  
  src/hooks.js ↔ hooks/src/index.js

Summary:
  Similar files: 12
  High similarity (>90%): 2
  Average similarity: 73.4%

Moderate similarity detected
```

## Advanced Usage

### Command Options
```bash
# Basic comparison
repodm compare <repo1> <repo2>

# Get help
repodm --help

# Check version
repodm --version
```

### Supported File Types
- JavaScript (.js, .jsx)
- TypeScript (.ts, .tsx)
- Python (.py)
- Java (.java)
- C/C++ (.c, .cpp, .h)
- C# (.cs)
- PHP (.php)
- Ruby (.rb)
- Go (.go)
- Rust (.rs)

## How It Works

1. **Repository Fetching**: Uses GitHub API to recursively fetch all source files
2. **Code Normalization**: Removes comments, normalizes whitespace, strips formatting
3. **Similarity Analysis**: Calculates Levenshtein distance between normalized code
4. **Risk Assessment**: Analyzes patterns and provides plagiarism risk evaluation
5. **Report Generation**: Creates detailed, color-coded similarity reports

## Requirements

- **Node.js**: v14.0.0 or higher
- **Internet**: Required for GitHub API access
- **GitHub Token**: Optional but recommended for rate limits

## Limitations

- Only works with **public repositories**
- Subject to **GitHub API rate limits** (60 requests/hour without token, 5000 with token)
- Focuses on **structural similarity**, not semantic analysis
- Large repositories may take longer to analyze
- Does not detect refactored or heavily modified code

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Troubleshooting

### Common Issues

**"API rate limit exceeded"**
- Set up GitHub token authentication
- Wait for rate limit reset (1 hour)

**"Repository not found"**
- Ensure repository is public
- Check repository name format: `owner/repo`
- Verify repository exists

**"No source files found"**
- Repository may not contain supported file types
- Check if repository has source code in main/master branch

### Getting Help

- Open an issue on GitHub
- Check existing issues for solutions
- Review this README for setup instructions

---

Made with care for developers who value code integrity
