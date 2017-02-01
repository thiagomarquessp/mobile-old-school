# encoding: utf-8
#!/usr/bin/env ruby


When(/^I press button Sou Novo$/) do
  #touch("Button id:'btNewUser'") 
  3.times {perform_action('drag', 99, 1, 50, 50, 5)}
  touch("tintbutton id:'btRegisteredUser'")
end

And(/^I fill out the registration initial fields$/) do
  @phone_number = Faker::Base.numerify('1199#######').to_s
  @senhapadrao  = 'inicial1234'
  enter_text("android.widget.EditText id:'etPhoneNumber'", @phone_number)
  touch("tintbutton id:'btLoginWithPhone'")
  sleep 10
  enter_text("android.widget.EditText id:'etPassword'", 'inicial1234')
  hide_soft_keyboard
  enter_text("android.widget.EditText id:'etConfirmPassword'", 'inicial1234')
  hide_soft_keyboard
  touch("tintbutton id:'btConfirm'")
end

And(/^I fill the additional fields$/) do
  @candidate_name = Faker::Name.name
  @date = Faker::Date.backward(14)
  @date.strftime("%m/%d/1986")
  enter_text("android.widget.EditText id:'etName'", @candidate_name)
  query("android.widget.RadioButton id:'rbMale'", :setChecked=>true)
  enter_text("android.widget.EditText id:'etBirthDate'", '03/06/1986')
end

And(/^I continued fill the additional fields$/) do
  @candidate_email = Faker::Internet.email
  enter_text("android.widget.EditText id:'etEmail'", @candidate_email)
  hide_soft_keyboard
  enter_text("android.widget.EditText id:'etCep'", '05433-001')
  hide_soft_keyboard
  touch("tintbutton id:'btConfirm'")
  sleep 10
end

And(/^I finish register$/) do
  touch("tintbutton id:'btFinish'")
  puts 'O número de telefone do candidato é' + @phone_number
  sleep 10
end

Then(/^I close the app$/) do
  query %(OverflowMenuButton)
  touch("ActionMenuPresenter$OverflowMenuButton")
  tap_mark('Sair')
  sleep 05
end

### Find Jobs

And(/^I search Jobs Near Home$/) do
  sleep 20
  #query("frame"=>{"y"=>414, "x"=>141})
  touch("android.widget.RelativeLayout id: 'btAllJobs'")
end
