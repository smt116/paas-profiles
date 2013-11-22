require_relative 'charts'

class LanguageCharts
  def support_columndata
    data = Charts.new.support_columndata 'runtimes.language', 0.05

    return data
  end

  def support_categories
    arr = []
    JSON.parse(support_columndata).each { |e| arr << e['name'] }
    arr
  end
end