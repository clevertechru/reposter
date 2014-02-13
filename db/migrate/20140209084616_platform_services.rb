class PlatformServices < ActiveRecord::Migration
  def up
    create_table :platform_services do |t|
      t.string :title
      t.string :api_model
      t.boolean :enabled, default: false
      t.integer :state

      t.timestamps
    end

    add_index :platform_services, [:id, :enabled]

    api = [
        ['site', nil],
        ['twitter',       'Api::Twitter'],
        ['googleplus',    'Api::GooglePlus'],
        ['facebook',      'Api::Facebook'],
        ['vkontakte',     'Api::Vkontakte'],
        ['odnoklassniki', 'Api::Odnoklassniki'],
        ['mailru',        'Api::MyMailRu']
    ]
    puts "Import [#{api.length}] platform type of service to platform_services table"
    api.each_with_index do |row, index|
      PlatformService.find_or_create_by_title({title: row[0], api_model: row[1]}, :without_protection => true)
      puts "[#{index + 1}] #{row[0]} #{row[1]} "
    end
  end

  def down
    drop_table :platform_services
  end
end
