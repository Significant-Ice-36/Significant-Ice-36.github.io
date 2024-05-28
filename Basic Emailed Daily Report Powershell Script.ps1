$EmailFrom = "sender@example.com"
$EmailTo = "recipient@example.com" 
$Subject = "Emailed Daily Report" 
$Body = "Hi there!" 
$SMTPServer = "smtp.gmail.com" 
$SMTPClient = New-Object Net.Mail.SmtpClient($SMTPServer, 587) 
$SMTPClient.EnableSsl = $true 
$SMTPClient.Credentials = New-Object System.Net.NetworkCredential("your_gmail_address@gmail.com", "your_app_password"); 
$SMTPClient.Send($EmailFrom, $EmailTo, $Subject, $Body)
