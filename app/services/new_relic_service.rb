class NewRelicService
  def self.performance(param)
    metric_name = "bb_agent: render delay for #{param['name']}"
    ::NewRelic::Agent.record_metric('Custom/Backbone/performance', param['elapsed'].to_i)
  end
end
