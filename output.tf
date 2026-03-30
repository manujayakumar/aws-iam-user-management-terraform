output "users" {
  value = local.users
}

output "names" {
  value = [for usr in local.users : title("${usr.first_name} ${usr.last_name}")]
}

output "account_id" {
  value = data.aws_caller_identity.user
}

output "users_password" {
  value = {
    for user, profile in aws_aws_iam_user_login_profile.user_profile.user : user => "password created - The user must reset on first login"
  }
}
