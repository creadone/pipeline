module Pipeline

  class Tube
    def initialize
      @workers = [] of Worker
    end

    def <<(worker)
      @workers << worker
    end

    def execute(data)
      @workers.eacc do |worker|
        worker.execute(data)
      end
    end

  end
end
