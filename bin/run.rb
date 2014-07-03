require 'json'
class Printer

  def do_stuff(data)
    data[:people].each do |person|
      p person[:first_name]
    end
  end
end

def get_data
  file_data = File.read('../data/crm.json')
  JSON.parse(file_data, symbolize_names: true)
end


Printer.new.do_stuff(get_data)

