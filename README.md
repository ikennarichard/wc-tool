<a name="readme-top"></a>

<div align="center">

  <h2><b>ccwc</b></h2>

</div>

<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Usage](#usage)
  - [Run linters](#run-linters)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

# 📖 ccwc - Coding Challenges Word Count Tool <a name="about-project"></a>

  This is a version of the  **wc** Unix command line tool.
  - [Demo](https://www.loom.com/share/d198b9d0e71d472c85e0b923937acd4d?sid=c491fe83-9040-4b6f-bc98-569db2382ee3)

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

- Ruby

<!-- Features -->

### Key Features <a name="key-features"></a>

- Output the number of bytes in a file `(-c or --bytes option)`.
- Output the number of lines in a file `(-l or --lines)`.
- Output the number of words in a file `(-w or --words)`.
- Output the number of characters in a file `(-m or --chars)`.
- Print from standard input if no file is specified.
- Provides usage instructions and error handling.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:

- Ensure you have Ruby installed on your system.
- VS Code or an editor of your choice.

### Setup

Clone this repository to your desired folder:

```sh
  git clone https://github.com/ikennarichard/wc-tool.git
```

### Install

Install dependencies:

```sh
  bundle install
```

### Usage

- Print the byte counts:

```sh
  ccwc -c file-name
```

- Print the line counts:

```sh
  ccwc -l file-name
```

- Print the word counts:

```sh
  ccwc -w file-name
```

- Print the character counts:

```sh
  ccwc -m file-name
```

- Print the from standard input if no file name is specified:

```sh
  cat file-name | ccwc -l
```

> If your on windows you will need to run `./ccwc.rb`

### Run linters

This project uses RuboCop, a static code analyzer (a.k.a linter) and formatter for Ruby:

- Autofix certain issues

```sh
  rubocop --auto-correct
```

<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>

👤 **Author**

- Twitter: [ikennarichard](https://twitter.com/ikennarichard_)
- LinkedIn: [Ikenna](https://linkedin.com/in/ikenna-richard)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

- Not available.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/ikennarichard/wc-tool/issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

Please give a ⭐️ if you like this project!

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

Hat tip to [Coding Challenges](https://codingchallenges.fyi) by John Crickett for inspiring this project.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](https://github.com/ikennarichard/wc-tool/blob/main/LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
