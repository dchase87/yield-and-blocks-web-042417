def hello_t(array)
  new_array = []
  array.each do |name|
    if name.start_with?("T") || name.start_with?("t")
      yield(name)
      new_array.push(name)
    end
  end
  new_array
end

hello_t(["Tim", "Tom", "Jim"]) do |name|
    puts "Hi, #{name}"
end
