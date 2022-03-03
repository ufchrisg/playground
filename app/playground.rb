class Playground
  attr_accessor :requires_maintenance
  attr_reader :opened_at

  def open!
    return if requires_maintenance

    @status = 'open'
    @opened_at = Time.now
    open?
  end

  def open?
    status == 'open'
  end

  def closed?
    status == 'closed'
  end

  def status
    @status ||= 'closed'
  end
end
