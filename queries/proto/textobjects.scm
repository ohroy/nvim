; --- Message (外层和内层) ---
; 匹配整个 message 结构
(message) @message.outer

; 匹配 message_body，即花括号内的所有内容
(message
  (message_body) @message.inner)

; --- Field (字段) ---
; 匹配整个 field 节点 (包括类型、名称和编号)
(field) @field.outer

; 仅匹配字段的标识符 (名称)
(field
   (identifier) @field.inner)
