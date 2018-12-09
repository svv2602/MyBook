module ArticlesHelper
  def division_options
    [['Выберите', nil]] + Division.all.map do |c|
      [c.name, c.id]
    end
  end
end
