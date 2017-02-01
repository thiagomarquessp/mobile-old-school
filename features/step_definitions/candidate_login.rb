# encoding: utf-8
#!/usr/bin/env ruby

When(/^I press button Ja sou cadastrado$/) do
  touch("tintbutton id:'btRegisteredUser'")
  sleep 10
end

And(/^I fill the login fields and press Entrar$/) do
  enter_text("android.widget.EditText id:'etPhoneNumber'", '11992664640')
  touch("tintbutton id:'btLoginWithPhone'")
  sleep 05
  enter_text("android.widget.EditText id:'etPassword'", 'inicial1234')
  touch("tintbutton id:'btLoginWithPhone'")
  sleep 20
end