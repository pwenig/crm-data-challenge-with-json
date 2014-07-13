require 'data_convert'

describe DataConvert do

  it "parses data and returns an array of companies and people" do

    crm = Crm.new

    actual = crm.employment_people

    expected = [
      {
        name: "Nicolas and Sons",
        employees: [
          {
            :id => 20,
            :first_name => "Savannah",
            :last_name => "Clementina",
            :title => "Chief Communications Consultant"
          },
          {
            :id => 46,
            :first_name => "Elyse",
            :last_name => "Jensen",
            :title => "Human Directives Engineer"
          },
        ]
      }
    ]

    expect(actual).to eq expected


  end
end