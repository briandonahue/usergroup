module MultiParameterAttributes

  def filter_time(attributes, name)
     attrs = attributes.collect do |key, value|
       puts "Something is #{key} and #{value}"
       match = key =~ /^(#{name})/

       puts "Is it true? #{$1} and #{$2}" 
       if key =~ /^#{Regexp.escape(name.to_s)}\((\d+)(\w)\)/
         puts "I found a key #{$i}"
         [$1.to_i, value.send("to_#$2")]
       end
     end.compact.sort_by(&:first).map(&:last)
     Time.zone.local(*attrs) unless attrs.empty?
  end

end
