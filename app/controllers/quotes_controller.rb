class QuotesController < Budu::Controller
  def index
    quotes = FileModel.all
    render :index, quotes: quotes
  end

  def show
    quote = FileModel.find(params["id"])
    ua = request.user_agent
    render :quote, obj: quote, ua: ua
  end

  def a_quote
    @noun = "word"
  end

  def exception
    raise "oh boy that's bad"
  end
end
