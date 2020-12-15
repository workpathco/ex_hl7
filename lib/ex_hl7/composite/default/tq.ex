defmodule HL7.Composite.Default.TQ do
  @moduledoc """
  4.3 Quantity/Timing (TQ) data type definition

  `quantity` is string because CQ cannot be legally expressed  when
  embedded within another data type due to having a nested CE type

  Components:

    - `quantity` (ST)
    - `interval` (CM)
    - `duration` (ST)
    - `start_datetime` (TS)
    - `end_datetime` (TS)
    - `priority` (ST)
    - `condition` (ST)
    - `text` (TX)
    - `conjunction` (ID)
    - `order_sequencing` (CM)
    - `occurrence_duration` (CE)
    - `total_occurrences` (NM)

  """
  use HL7.Composite.Spec

  require HL7.Composite.Default.CE, as: CE
  require HL7.Composite.Default.CM_TQ_2, as: CM_TQ_2
  require HL7.Composite.Default.CM_TQ_10, as: CM_TQ_10

  composite do
    component :quantity,          type: :string
    component :interval,          type: CM_TQ_2
    component :duration,          type: :string
    component :start_datetime,    type: :datetime
    component :end_datetime,      type: :datetime
    component :priority,          type: :string
    component :condition,         type: :string
    component :text,              type: :string
    component :conjunction,       type: :string
    component :order_sequencing,  type: CM_TQ_10
    component :order_duration,    type: CE
    component :total_occurrences, type: :integer
  end
end
