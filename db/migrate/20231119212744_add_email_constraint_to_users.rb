class AddEmailConstraintToUsers < ActiveRecord::Migration[5.2]
  def change
  end

  def up
    execute %{
      ALTER TABLE
       users
      ALTER CONSTRAINT
       email_must_be_company_email
      CHECK ( email ~* '^[^@]+@example\\.com$')
    }  
  end

  def down
    execute %{
      ALTER TABLE
       users
      DROP CONSTRAINT
       email_must_be_company_email
    }  
  end
end
