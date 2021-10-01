require 'csv'

CSV.generate(encoding: Encoding::SJIS, row_sep: "\r\n", force_quotes: true) do |csv|
  column_names = %w(isbn title price publish published cd)
  csv << column_names
  @hon.each do |user|
    csv << column_names.map { |column_name| user[column_name] }
  end
end
