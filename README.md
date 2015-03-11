# Gauge example project, in Ruby

[![Build Status](https://snap-ci.com/getgauge/gauge-example-ruby/branch/master/build_image)](https://snap-ci.com/getgauge/gauge-example-ruby/branch/master)

###Last Run Reports (Powered by [Snap CI](https://snap-ci.com/))
- [Console](https://gauge-reports-ruby.herokuapp.com/console)
- [Html](https://gauge-reports-ruby.herokuapp.com/)

This project serves as an example for writing Automation using [Gauge](https://github.com/getgauge/gauge)

This project uses 

- [Capypage](https://github.com/TWChennai/capypage), that gives you neat helpers to define your Page Objects.
- Capybara, as a dependency of Capypage
- Test::Unit for assertions
- Snap CI has been setup to run the Gauge Specs from this project.

# Concepts covered

- Use [Webdriver](http://docs.seleniumhq.org/projects/webdriver/) as base of implementation
- [Concepts](http://getgauge.io/documentation/user/current/specifications/concepts.html)
- [Specification](http://getgauge.io/documentation/user/current/specifications/README.html), [Scenario](http://getgauge.io/documentation/user/current/specifications/scenarios.html) & [Step](http://getgauge.io/documentation/user/current/specifications/steps.html) usage
- [Table driven execution](http://getgauge.io/documentation/user/current/execution/table_driven_execution.html)
- [External datasource (special param)](http://getgauge.io/documentation/user/current/specifications/parameters.html#special-parameters)


# Prerequisites
- [Install Gauge](http://getgauge.io/download.html)
- [Install Gauge-Ruby plugin](http://getgauge.io/documentation/user/current/plugins/installation.html)
- Chromedriver, for Capybara to interact with Chrome. Make sure that the Chromedriver binary is available in your PATH.

# Copyright
Copyright 2015, ThoughtWorks Inc.
