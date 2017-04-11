# Symbol GC test
require 'java'

java_import 'java.lang.System'

before = Symbol.all_symbols.size


100_000.times do |i|
  "sym#{i}".to_sym
end

# GC.start
System.gc
after = Symbol.all_symbols.size
puts after - before