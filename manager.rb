class Employee
  attr_reader :first_name, :last_name, :active
  attr_writer :active

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info
    puts "#{@first_name} #{@last_name} makes #{@salary} a year."
  end

  def give_annual_raise
    @salary = 1.05 * @salary
  end
end

employee1 = Employee.new({first_name: "Majora", last_name: "Carter", salary: 80000, active: true})
employee2 = Employee.new(first_name: "Danilo", last_name: "Campos", salary: 70000, active: true)

class Manager < Employee
  attr_accessor :employees
  def initialize(input_options)
    super
    @employees = input_options[:employees]
  end
  
  def send_report
    puts "Sending email..."
    # use email sending library...
    puts "Email sent!"
  end
  
  def give_all_raises
    # pp @employees[0].give_annual_raise #works
    # pp @employees[1].give_annual_raise #works
    # index = 0
    # while index < 2
    #   @employees[index].give_annual_raise
    #   index += 1
    # end
    employees.each do |emp|
      emp.give_annual_raise
    end
  end

  def fire_all_employees
    # employees[0].active = false
    # employees[1].active = false

    employees.each do |fire|
      fire.active = false
    end
  end
end

manager = Manager.new(first_name: "Saron", last_name: "Yitbarek", salary: 100000, active: true, employees: [employee1, employee2])
# manager.print_info
# manager.send_report
employee1.print_info
employee2.print_info
manager.give_all_raises
manager.fire_all_employees
employee1.print_info
employee2.print_info
pp employee1
pp employee2