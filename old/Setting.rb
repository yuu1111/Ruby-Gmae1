#! ruby -E utf-8
module FileManager
  def initialize
    if File.exist?("Settings.txt") then
    else
      open("Settings.txt", 'w'){|f|
        f.puts '800'
        f.puts '600'
      }
    end
  end

  def setting_file_load
    if File.exist?("Settings.txt") then
      File.open("Settings.txt"){|f|
        $Width = f.gets  #1�s��
        $Height = f.gets #2�s��
      }
    end
  end
  module_function :setting_file_load
end