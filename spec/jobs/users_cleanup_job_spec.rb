require 'rails_helper'

RSpec.describe UsersCleanupJob, type: :job do
  include ActiveJob::TestHelper

  let(:time_in_seconds) { 10 }
  subject(:job) { described_class.perform_later(time_in_seconds) }

  context "when the job is performed" do
    it "queues the job" do
      expect{ job }.to(
        have_enqueued_job(described_class)
        .with(time_in_seconds)
        .on_queue("users")
      )
    end

    after do
      clear_enqueued_jobs
      clear_performed_jobs
    end
  end
end
