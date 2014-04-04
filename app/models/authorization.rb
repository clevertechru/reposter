class Authorization < ActiveRecord::Base
  attr_accessible :provider, :uid, :token, :token_expires_at, :user_id, :user
  validates :provider, :uid, :presence => true

  belongs_to :user

  def self.find_or_create(auth_hash)

    unless auth = find_by_provider_and_uid(auth_hash['provider'], auth_hash['uid'])
      user = User.create :name  => auth_hash['info']['name'],
                         :email => auth_hash['info']['email']
      auth = create :user             => user,
                    :provider         => auth_hash['provider'],
                    :uid              => auth_hash['uid'],
                    :token            => auth_hash['credentials'].present? ? auth_hash['credentials']['token']      : nil,
                    :token_expires_at => auth_hash['credentials'].present? ? auth_hash['credentials']['expires_at'] : 0
    end

    auth
  end

end
