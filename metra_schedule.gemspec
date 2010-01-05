# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{metra_schedule}
  s.version = "0.2.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Blake Smith"]
  s.date = %q{2010-01-05}
  s.description = %q{metra_schedule provides a ruby object interface to the Chicago metra train schedule}
  s.email = %q{blakesmith0@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "lib/metra.rb",
     "lib/metra/cacher.rb",
     "lib/metra/classmethods.rb",
     "lib/metra/extensions/time_extension.rb",
     "lib/metra/line.rb",
     "lib/metra/parser.rb",
     "lib/metra/stop.rb",
     "lib/metra/train.rb",
     "lib/metra/train_data.rb",
     "metra_schedule.gemspec",
     "test/fixture/UP_NW.html",
     "test/functional/test_all_filters.rb",
     "test/integration/test_line_integration.rb",
     "test/test_helper.rb",
     "test/timecop/History.rdoc",
     "test/timecop/LICENSE",
     "test/timecop/README.rdoc",
     "test/timecop/Rakefile",
     "test/timecop/VERSION.yml",
     "test/timecop/lib/timecop.rb",
     "test/timecop/lib/timecop/time_extensions.rb",
     "test/timecop/lib/timecop/time_stack_item.rb",
     "test/timecop/lib/timecop/timecop.rb",
     "test/unit/test_cacher.rb",
     "test/unit/test_line.rb",
     "test/unit/test_metra.rb",
     "test/unit/test_parser.rb",
     "test/unit/test_stop.rb",
     "test/unit/test_time_extension.rb",
     "test/unit/test_train.rb"
  ]
  s.homepage = %q{http://github.com/blakesmith/metra_schedule}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Chicago Metra parser and scheduler}
  s.test_files = [
    "test/integration/test_line_integration.rb",
     "test/functional/test_all_filters.rb",
     "test/timecop/lib/timecop/time_stack_item.rb",
     "test/timecop/lib/timecop/timecop.rb",
     "test/timecop/lib/timecop/time_extensions.rb",
     "test/timecop/lib/timecop.rb",
     "test/unit/test_time_extension.rb",
     "test/unit/test_train.rb",
     "test/unit/test_line.rb",
     "test/unit/test_metra.rb",
     "test/unit/test_stop.rb",
     "test/unit/test_parser.rb",
     "test/unit/test_cacher.rb",
     "test/test_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

