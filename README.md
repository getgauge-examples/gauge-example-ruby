# Deprecation notice

Do not use this sample. It's a reference on why page objects will burn your house. Gauge recommends **not** using page objects.
Refer https://github.com/getgauge-examples/ruby-selenium and our [blog](https://blog.getgauge.io/are-page-objects-anti-pattern-21b6e337880f)


# Gauge example project, in Ruby

[![Build Status](https://travis-ci.org/getgauge-examples/gauge-example-ruby.svg?branch=master)](https://travis-ci.org/getgauge-examples/gauge-example-ruby)

This project serves as an example for writing Automation using [Gauge](http://getgauge.io)

This project uses 

- [Capypage](https://github.com/TWChennai/capypage), that gives you neat helpers to define your Page Objects.
- Capybara, as a dependency of Capypage
- Test::Unit for assertions
- Snap CI has been setup to run the Gauge Specs from this project.

# Concepts covered

- Use [Webdriver](http://docs.seleniumhq.org/projects/webdriver/) as base of implementation
- [Concepts](https://docs.gauge.org/latest/writing-specifications.html#concepts)
* [Specification](https://docs.gauge.org/latest/writing-specifications.html#specifications-spec), [Scenario](https://docs.gauge.org/latest/writing-specifications.html#scenario) and [Step](https://docs.gauge.org/latest/writing-specifications.html#step)
* [Table parameters](https://docs.gauge.org/latest/writing-specifications.html#table-parameters)
* Using [External datasource (special param)](https://docs.gauge.org/latest/writing-specifications.html#special-parameters)
# Prerequisites
- [Java 1.7 or above](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html). [Required to bring up the [SUT](#setting-up-the-system-under-test-sut)]
- [Install Gauge](https://docs.gauge.org/getting_started/installing-gauge.html)
  - Homebrew on Mac OS X :  
      ```
      brew install gauge
      ```
  - [Download Installer](http://getgauge.io/get-started/index.html)
- [Install Gauge-Ruby plugin](https://gauge.org/plugins/) by running<br>
  ```
  gauge install ruby
  ```
- Chromedriver, for Capybara to interact with Chrome. Make sure that the [Chrome driver executable](https://sites.google.com/a/chromium.org/chromedriver/downloads) is available in your PATH.

## Setting up the System Under Test (SUT)

* Download [activeadmin-demo.war](https://bintray.com/artifact/download/gauge/activeadmin-demo/activeadmin-demo.war)
* Bring up the SUT by executing the below command
```
java -jar activeadmin-demo.war
```
* The SUT should now be available at http://localhost:8080


# Executing specs

### Set up
This project requires bundler to install dependencies, bundler can be installed by running
````
gem install bundler
````
To install dependencies run : 
````
bundle install
````

### All specs
````
bundle exec gauge run specs
````
This will also compile all the supporting code implementations.

# Copyright
Copyright 2017, ThoughtWorks Inc.
