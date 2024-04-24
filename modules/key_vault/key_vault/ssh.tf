resource tls_private_key app_vault {
  algorithm = "RSA"
  rsa_bits  = 2048
}

resource azurerm_key_vault_secret ssh_public_key {
  key_vault_id = azurerm_key_vault.app_vault.id
  name         = "ssh-public"
  value        = tls_private_key.app_vault.public_key_openssh
  depends_on = [azurerm_key_vault.app_vault]
}

resource azurerm_key_vault_secret ssh_private_key {
  key_vault_id = azurerm_key_vault.app_vault.id
  name         = "ssh-private"
  value        = tls_private_key.app_vault.private_key_pem
  depends_on = [azurerm_key_vault.app_vault]
}