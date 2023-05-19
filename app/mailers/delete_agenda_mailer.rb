class DeleteAgendaMailer < ApplicationMailer
  def delete_agenda_mail(deleted_agenda)
    @agenda = deleted_agenda
    mail to: @agenda.team.users.pluck(:email), subject: "アジェンダが削除されました"
  end
end
