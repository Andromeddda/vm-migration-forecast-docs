// Порядок: кириллица, латиница, по заглавию.
#let sources = (
  (id: "g101", body: [ГОСТ 19.101-2024. Единая система программной документации. Виды программ и программных документов.]),
  (id: "g102", body: [ГОСТ 19.102-77. Единая система программной документации. Стадии разработки.]),
  (id: "g103", body: [ГОСТ 19.103-77. Единая система программной документации. Обозначение программ и программных документов.]),
  (id: "g104", body: [ГОСТ 19.104-78. Единая система программной документации. Основные надписи.]),
  (id: "g105", body: [ГОСТ 19.105-78. Единая система программной документации. Общие требования к программным документам.]),
  (id: "g106", body: [ГОСТ 19.106-78. Единая система программной документации. Требования к программным документам, выполненным печатным способом.]),
  (id: "g201", body: [ГОСТ 19.201-78. Единая система программной документации. Техническое задание. Требования к содержанию и оформлению.]),
  (id: "g301", body: [ГОСТ 19.301-79. Единая система программной документации. Программа и методика испытаний. Требования к содержанию и оформлению.]),
  (id: "g401", body: [ГОСТ 19.401-78. Единая система программной документации. Текст программы. Требования к содержанию и оформлению.]),
  (id: "g404", body: [ГОСТ 19.404-79. Единая система программной документации. Пояснительная записка. Требования к содержанию и оформлению.]),
  (id: "g504", body: [ГОСТ 19.504-79. Единая система программной документации. Руководство программиста. Требования к содержанию и оформлению.]),
  (id: "g603", body: [ГОСТ 19.603-78. Единая система программной документации. Общие правила внесения изменений.]),
  (id: "g604", body: [ГОСТ 19.604-78. Единая система программной документации. Правила внесения изменений в программные документы, выполненные печатным способом.]),
  (id: "instruction", body: [Инструкция по подготовке документов к защите тем ВКР на образовательной программе «Программная инженерия» в 2026/27 учебном году / НИУ ВШЭ. — Москва, 2026. — Учебно-методический материал, размещённый в SmartLMS.]),
  (id: "google2019", body: [Wilkes J. ClusterData 2019 traces / Google. — URL: #link("https://github.com/google/cluster-data/blob/master/ClusterData2019.md") (дата обращения: 17.11.2026).]),
  (id: "predictions", body: [Buchbinder N., Fairstein Y., Mellou K., Menache I., Naor J. Online Virtual Machine Allocation with Predictions. — 2020. — arXiv:2011.06250, версия 1. — URL: #link("https://arxiv.org/abs/2011.06250v1") (дата обращения: 17.11.2026).]),
  (id: "statsmodels", body: [statsmodels.tsa.holtwinters.ExponentialSmoothing #text("//") statsmodels: документация. — URL: #link("https://www.statsmodels.org/dev/generated/statsmodels.tsa.holtwinters.ExponentialSmoothing.html") (дата обращения: 17.11.2026).]),
  (id: "vtgan", body: [Maiyza A. I., Hassan H. A., Sheta W. M., Banawan K., Korany N. O. VTGAN based proactive VM consolidation in cloud data centers using value and trend approaches #text("//") Scientific Reports. — 2025. — Vol. 15. — Article 20133. — DOI: #link("https://doi.org/10.1038/s41598-025-04757-z") (дата обращения: 17.11.2026).])
)

#let cite-source(id) = {
  let i = sources.map(s => s.id).position(x => x == id)
  assert(i != none, message: "Неизвестный источник: " + id)
  link(label("src-" + id), text("[" + str(i + 1) + "]"))
}

#let bibliography() = {
  set par(first-line-indent: 0pt, leading: 8.7pt, spacing: 6pt, justify: true)
  set enum(numbering: "1.", indent: 0pt, body-indent: 0.5em, spacing: 6pt)
  show enum.item: it => block(breakable: false, it)
  enum(..sources.map(s => [#s.body #label("src-" + s.id)]))
}
