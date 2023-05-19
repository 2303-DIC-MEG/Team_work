class AgendaMailer < ApplicationMailer
  def agenda_mail(agenda)
    @agenda = agenda
    mail to: @agenda.team.users.pluck(:email), subject: "アジェンダが削除されました"
  end
end
