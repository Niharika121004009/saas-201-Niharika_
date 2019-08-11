require_relative './application'
def class
  system 'class'
end

def main_display
  puts "Please choose the action you want?" \
  "\n1. Enroll into a department" \
  "\n2. Change your department" \
  "\n3. Change your section" \
  "\n4. View the details" \
  "\n5. Show Departments"
end

def question_1
  puts 'What is your name?'
end

def question_2
  puts "Please select your department from the given choices?" \
  "\nEEE" \
  "\nMECH" \
  "\nCSE" \
  "\nCIVIL"
end

def question_3
  puts "Please select your section from the given choices?" \
  "\nA" \
  "\nB" \
  "\nC" \
end

def details_view_options
  puts "Please choose the details you would like to get?" \
  "\n1. List all students in a department" \
  "\n2. List all students in a section" \
  "\n3. List details of a student"
end

application = Application.new

loop do
  main_display
  user_option = gets.chomp.to_i
  case user_option
  when 1
    question_1
    student_name = gets.chomp
    question_2
    student_dept = gets.chomp
    puts application.enroll student_name, student_dept
  when 2
    question_1
    student_name = gets.chomp
    question_2
    student_dept = gets.chomp
    puts application.change_dept student_name, student_dept
  when 3
    question_1
    student_name = gets.chomp
    question_3
    section = gets.chomp
    puts application.change_section student_name, section
  when 4
    details_view_options
    selected_view = gets.chomp.to_i
    case selected_view
    when 1
      question_2
      student_dept = gets.chomp
      puts application.department_view student_dept
    when 2
      question_2
      student_dept = gets.chomp
      question_3
      section = gets.chomp
      puts application.section_view student_dept, section
    when 3
      question_1
      student_name = gets.chomp
      puts application.student_details student_name
    end
  when 5
    application.show
  end
  puts 'Press any key to go back'
  gets
  class
end
