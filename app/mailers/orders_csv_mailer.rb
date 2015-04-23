class OrdersCsvMailer < ActionMailer::Base
  def csv_mail(email, filename, csv_data)
    attachments[filename] = csv_data
    mail(to: email, subject: 'Your Orders Csv', body: 'Attached please find the requested order csv')
  end
end
