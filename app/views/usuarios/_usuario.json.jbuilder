json.extract! usuario, :id, :username, :email, :crypted_password, :salt, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
