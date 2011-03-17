class DistrictMailer < ActionMailer::Base
  default :from => "joel+tipster@codeforamerica.org"

    def tip_email(tip)
      @tip = tip
      mail(:to => tip.district_email_address,
           :subject => "New Tip: #{tip.subject}")
    end
end
