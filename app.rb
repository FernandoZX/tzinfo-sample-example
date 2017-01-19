require 'tzinfo'

tz = TZInfo::Timezone.get('Europe/London')

puts tz.utc_to_local(DateTime.new(2016,1,10,20,45,0)).to_s
puts tz.local_to_utc(Time.utc(2016,1,10,20,45,0)).to_s
puts "current to utc FROM: #{Time.now} UTC:#{Time.now.utc}"
puts "setted utc #{Time.utc(2016,1,10,20,0,0)}"
puts tz.utc_to_local(Time.new(2017,1,10,21,58,0).utc).to_s
now = tz.now.to_s
puts now