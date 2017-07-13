class User < ApplicationRecord
  has_secure_password

  attr_accessor :first_name, :last_name, :email, :password

  def self.import(file)
      spreadsheet = open_spreadsheet(file)
      header = spreadsheet.row(1)
      (2..spreadsheet.last_row).each do |i|
        row = Hash[[header, spreadsheet.row(i)].transpose]
        user = find_by_id(row["id"]) || new
        user.attributes = row.to_hash.slice(*accessible_attributes)
        user.save!
    end
  end

  def self.open_spreadsheet(file)
    case File.extname(file.original_filename)
    when ".csv" then Csv.new(file.path, nil, :ignore)
    when ".xls" then Excel.new(file.path, nil, :ignore)
    when ".xlsx" then Excelx.new(file.path, nil, :ignore)
    else raise "Unknown file type: #{file.original_filename}"
    end
  end

 has_many :messages
 has_many :conversations, foreign_key: :sender_id
 belongs_to :role 

  
  validates_format_of :email, with: /\@kepler\.org/, message: 'You should have an email with kepler.org'
  
  
   has_many :comments

  has_many :messages   
  has_many :conversations, :foreign_key => :sender_id 

end
