source ENV['GEM_SOURCE'] || "https://rubygems.org"

group :test do
  gem "rake"
  gem "puppet", ENV['PUPPET_VERSION'] || '~> 3.4.0'
  gem "puppet-lint"
  gem "rspec-puppet", :git => 'https://github.com/rodjek/rspec-puppet.git'
  gem "puppet-syntax"
  gem "puppetlabs_spec_helper", "0.4.1"
  gem "beaker"
  gem "beaker-rspec"
	gem "rspec", "2.99.0"
end

group :development do
  gem "travis"
  gem "travis-lint"
  gem "vagrant-wrapper"
  gem "puppet-blacksmith"
  gem "guard-rake"

  gem 'puppet-lint-absolute_classname-check', '0.1.3'
  gem 'puppet-lint-alias-check', '0.1.0'
  gem 'puppet-lint-absolute_template_path', '1.0.0'
  gem 'puppet-lint-appends-check', '0.1.0'
  gem 'puppet-lint-classes_and_types_beginning_with_digits-check', '0.1.0'
  gem 'puppet-lint-empty_string-check', '0.2.1'
  gem 'puppet-lint-file_ensure-check', '0.2.1'
  gem 'puppet-lint-file_source_rights-check', '0.1.0'
  gem 'puppet-lint-fileserver-check', '1.2.1'
  gem 'puppet-lint-leading_zero-check', '0.1.0'
  gem 'puppet-lint-no_symbolic_file_modes-check', '1.0.1'
  gem 'puppet-lint-numericvariable', '1.0.0'
  gem 'puppet-lint-package_ensure-check', '0.1.0'

  gem 'puppet-lint-resource_reference_syntax', '1.0.8'
  gem 'puppet-lint-roles_and_profiles-check', '0.1.0'
  gem 'puppet-lint-security-plugins', '0.1.7'
  gem 'puppet-lint-spaceship_operator_without_tag-check', '0.1.0'
  gem 'puppet-lint-strict_indent-check', '2.0.1'
  gem 'puppet-lint-trailing_comma-check', '0.3.1'
  gem 'puppet-lint-undef_in_function-check', '0.1.0'
  gem 'puppet-lint-unquoted_string-check', '0.2.5'
  gem 'puppet-lint-usascii_format-check', '1.0.0'
  gem 'puppet-lint-variable_contains_upcase', '1.0.0'
  gem 'puppet-lint-version_comparison-check', '0.1.2'
end
