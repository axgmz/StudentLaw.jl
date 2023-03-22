# StudentLaw.jl

<div id="top"></div>

<!-- PROJECT SHIELDS -->

[![MIT License][license-shield]][license-url]

<!-- TABLE OF CONTENTS -->

<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about">About The Project</a>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#license">License</a></li>
  </ol>
</details>

<!-- ABOUT THE PROJECT -->
<div id="about"></div>

## About The Project

Julia package providing a single function to obtain a Student coefficient for a confidence interval.

User provides the number of degrees of freedom, the probability and optionally can use `side=1` for a one-sided t-distribution (default is two-sided).

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- GETTING STARTED -->
<div id="getting-started"></div>

## Getting Started

<div id="prerequisites"></div>

### Prerequisites

This module is compatible with Julia 1.6 or above. It relies on the JuliaStats package [Distributions.jl](https://github.com/JuliaStats/Distributions.jl).

<div id="installation"></div>

### Installation

```sh
pkg> add https://github.com/axgmz/StudentLaw.jl.git
```

or

```sh
pkg> add git@github.com:axgmz/StudentLaw.jl.git
```

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- USAGE EXAMPLES -->
<div id="usage"></div>

## Usage

The function `studentcoef` provided by this module is called with:
   ```julia
   julia> studentcoef(20,0.95)
   ```
to obtain the Student's coefficient for a two-sided distribution with 20 degrees of freedom. Can be used for a confidence interval within 95%.

A one-sided distribution can be requested with:
   ```julia
   julia> studentcoef(20,0.95,side=1)
   ```

The number of digits in the output can be modified with
   ```julia
   julia> studentcoef(20,0.95,digits=3)
   ```
(the default number of digits is 3)

Julia help is available as for any other Julia function.

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- LICENSE -->
<div id="license"></div>

## License

Distributed under the MIT License. See `LICENSE` for more information.

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[license-shield]: https://img.shields.io/github/license/axgmz/StudentLaw.jl.svg?style=for-the-badge
[license-url]: https://github.com/axgmz/StudentLaw.jl/blob/main/LICENSE

