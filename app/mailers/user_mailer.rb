class UserMailer < ActionMailer::Base
  default :from => 'ticketmaster.notif@gmail.com'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_email(user, nb_tickets)
    @user = user
    @nb_tickets = nb_tickets
    mail( :to => @user.email,
          :subject => "Commande de #{@nb_tickets} tickets" )
  end
end
