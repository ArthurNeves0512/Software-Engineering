class LearningLoops
  def initialize(time_to_loop, name_to_print)
    @times_to_repeat = time_to_loop
    @name_to_print = name_to_print
  end

  def using_while_by_instance
    flag_conting = 0
    while flag_conting < @times_to_repeat
      puts "The name chosed is #{@name_to_print}"
      flag_conting += 1
    end
  end

  def self.using_while_static
    flag_conting=0
    @times_to_repeat=2
    while flag_conting < @times_to_repeat
      puts "There is no name"
      flag_conting += 1
    end
  end
end

first_test = LearningLoops.new(3, 'Arthur')
first_test.using_while_by_instance
puts 'Now is using static function'
LearningLoops.using_while_static
