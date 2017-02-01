# encoding: utf-8
#!/usr/bin/env ruby

When(/^I touch your job register$/) do
	touch("android.widget.LinearLayout id:'llContainerProfileNameAge'")
	touch("* id:'btJob1'")
	sleep 05
end

And(/^I choose Area$/) do
	touch()  
end
