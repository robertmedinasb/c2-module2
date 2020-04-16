# frozen_string_literal: true

class Phone
  def initialize(owner, number)
    @owner = owner.capitalize
    @number = number
    @call = true
  end

  def call?
    if @call
      puts 'The phone is ringing! Take the phone'
    else
      puts 'The phone is quiet, keep calm'
    end
  end
end

robert_phone = Phone.new(:robert, 960_578_207)
robert_phone.call?

class Laptop
  def initialize(brand, owner)
    @brand = brand
    @lenovo = owner
    @clean = false
  end

  def clean?
    if @clean
      puts "Laptop still clean, no worries"
    else
      puts "Your laptop is dirty, what are you waiting to clean it? "
    end
  end
end
robert_laptop = Laptop.new(:lenovo, :robert)
robert_laptop.is_clean?

class Person
  def initialize(name, sick)
    @name = name
    @sick = sick
  end

  def sick?
    if @sick
      puts "Mom say: #{@name.capitalize}! I told you not to be barefoot!"
    else
      puts "I love you son"
    end
  end
end

brother = Person.new(:walter, true)
brother.sick?
