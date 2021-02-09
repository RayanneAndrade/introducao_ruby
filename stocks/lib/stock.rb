class Stock
  def evaluate(stock)
  	/([A-Z].+):(\d.+)/.match stock
  	valores = $2.split.map(&:to_i).combination(2).to_a
  	lucro = valores.map { |valor| valor[1]-valor[0] }.max
  	"#{$1}:#{lucro}"
  end
  def evaluate_stocks(stocks)
  	transaction = stocks.split("\n").map { |stock| evaluate(stock).split(':') }
  	lucrar = transaction.to_h.values.map(&:to_i).max  
  	identificacao = transaction.to_h.key(lucrar.to_s)
  	"#{identificacao}:#{lucrar}"
  end
end