require 'spec/rake/spectask'

Spec::Rake::SpecTask.new(:spec) do |t|
  t.libs << 'lib' << 'spec'
  t.spec_opts = [ '--options', 'spec/spec.opts' ]
  t.spec_files = FileList['spec/**/*_spec.rb']
end

Spec::Rake::SpecTask.new(:rcov) do |t|
  t.libs << 'lib' << 'spec'
  t.spec_files = 'spec/**/*_spec.rb'
  t.rcov_opts = [ '--exclude', '.bundle/*,gems/*,spec/*' ]
  t.rcov = true
end

task :default => :spec
