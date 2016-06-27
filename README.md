# Gauge example project, in Ruby

[![Build Status](https://snap-ci.com/getgauge/gauge-example-ruby/branch/master/build_image)](https://snap-ci.com/getgauge/gauge-example-ruby/branch/master)
[![HTML report](https://img.shields.io/badge/report-html-green.svg)](http://gauge-example-reports.herokuapp.com/ruby)
[![Console report](https://img.shields.io/badge/report-console-blue.svg)](http://gauge-example-reports.herokuapp.com/ruby/console)

This project serves as an example for writing Automation using [Gauge](http://getgauge.io)

This project uses 

- [Capypage](https://github.com/TWChennai/capypage), that gives you neat helpers to define your Page Objects.
- Capybara, as a dependency of Capypage
- Test::Unit for assertions
- Snap CI has been setup to run the Gauge Specs from this project.

# Concepts covered

- Use [Webdriver](http://docs.seleniumhq.org/projects/webdriver/) as base of implementation
- [Concepts](http://getgauge.io/documentation/user/current/gauge_terminologies/concepts.html)
- [Specification](http://getgauge.io/documentation/user/current/gauge_terminologies/specifications.html), [Scenario](http://getgauge.io/documentation/user/current/gauge_terminologies/scenarios.html) & [Step](http://getgauge.io/documentation/user/current/gauge_terminologies/steps.html) usage
- [Table driven execution](http://getgauge.io/documentation/user/current/advanced_readings/execution_types/table_driven_execution.html)
- [External datasource (special param)](http://getgauge.io/documentation/user/current/gauge_terminologies/parameters/special_parameters.html)

# Prerequisites
- [Java 1.7 or above](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html). [Required to bring up the [SUT](#setting-up-the-system-under-test-sut)]
- [Install Gauge](http://getgauge.io/get-started/index.html)
  - Homebrew on Mac OS X :  
      ```
      brew install gauge
      ```
  - [Download Installer](http://getgauge.io/get-started/index.html)
- [Install Gauge-Ruby plugin](http://getgauge.io/documentation/user/current/installations/install_plugins.html) by running<br>
  ```
  gauge --install ruby
  ```
- Chromedriver, for Capybara to interact with Chrome. Make sure that the [Chrome driver executable](https://sites.google.com/a/chromium.org/chromedriver/downloads) is available in your PATH.

## Setting up the System Under Test (SUT)

* Download [activeadmin-demo.war](https://bintray.com/artifact/download/gauge/activeadmin-demo/activeadmin-demo.war)
* Bring up the SUT by executing the below command
```
java -jar activeadmin-demo.war
```
* The SUT should now be available at [http://localhost:8080/](http://localhost:8080)


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
bundle exec gauge specs
````
This will also compile all the supporting code implementations.

# Copyright
Copyright 2016, ThoughtWorks Inc.
