module <%= class_name %>
  class FindSubjectsWorker < SyncMachine::FindSubjectsWorker
    subject_ids_from_<%= subject %> do |<%= subject %>|
      [<%= subject %>.id.to_s]
    end
  end
end
