class Email < ActiveRecord::Base

def send!
	`echo "Subject: Welcome on board!" | sendmail -v  #{self.rcpt}`
end
end