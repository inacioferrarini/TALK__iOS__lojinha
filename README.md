# lojinha

This is a simple app, used to support a talk about submodules and coordinator usage on iOS platform.

To keep it organized and modular, it is used git submodules.

# To clone
You can clone all at once

```bash
$ git clone --recursive https://github.com/inacioferrarini/lojinha.git
```

Or, clone it and then update its submodules

```bash
$ git clone https://github.com/inacioferrarini/lojinha.git
$ git submodule init
$ git submodule update
```

# Updating local code after clone

```bash
$ git pull --recurse-submodules
```

# Adding a new Module
Create a folder called temp
Create the module using cookiecutter template

```bash
$ cookiecutter https://github.com/cookiecutter-swift/FrameworkTemplate
```

Once the module is created:

* check the created 
* check the created `Gemfile` file 
 
```ruby
source 'https://rubygems.org'

gem 'fastlane', '~> 2.120.0'
gem 'cocoapods', '~> 1.7.4'
gem 'slather', '~> 2.4.7'
```

* check the created `.podspec` file
* remove the created `.swift-version` file
* execute `bundle exec pod lib lint --sources=INACIO_PODSPECS,master`
* push it to the remote repository

For modules used by other modules, it is required to push the podspec to the private repository
```bash
$ git tag 'v0.0.2'
$ git push --tags
$ bundle exec pod repo update INACIO_PODSPECS
$ bundle exec pod repo push INACIO_PODSPECS Common.podspec
```

Go to `modules` folder

```bash
$ git submodule add https://github.com/inacioferrarini/lojinha-login Login
```

Finally, add the new module to the main App.

Edit `lojinha/Podfile`

Add the new dependency

```ruby
pod 'Login', :path => '../modules/Login'
```

Execute Cocoapods

```bash
$ bundle exec pod install
```

