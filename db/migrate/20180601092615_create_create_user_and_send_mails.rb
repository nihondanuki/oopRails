class CreateCreateUserAndSendMails < ActiveRecord::Migration[5.1]
  def change
    create_table :create_user_and_send_mails do |t|

      t.timestamps
    end
  end
end
