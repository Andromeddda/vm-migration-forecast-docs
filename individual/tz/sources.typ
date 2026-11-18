// Порядок: кириллица, латиница; нормативные документы по обозначению, публикации по авторам.
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
  (id: "predictions", body: [Buchbinder N., Fairstein Y., Mellou K., Menache I., Naor J. Online Virtual Machine Allocation with Predictions. — 2020. — arXiv:2011.06250, версия 1. — URL: #link("https://arxiv.org/abs/2011.06250v1") (дата обращения: 17.11.2026).]),
  (id: "cao", body: [Cao R., Wang L., Wu Y., Ding Y., Tang X., Deng T., Liu W. Predictive Resource Management for Efficient Deployment and Migration of Multimodal Intelligent Agents in Kubernetes Clusters #text("//") Data Intelligence. — 2025. — DOI: #link("https://doi.org/10.3724/2096-7004.di.2025.0173"). — URL: #link("https://www.researchgate.net/publication/395939619_Predictive_Resource_Management_for_Efficient_Deployment_and_Migration_of_Multimodal_Intelligent_Agents_in_Kubernetes_Clusters") (дата обращения: 18.11.2026).]),
  (id: "christensen", body: [Christensen H. D., Giallorenzo S., Mauro J. A Kubernetes Scheduler Plugin for Cluster-Wide Placement Optimisation. — 2026. — arXiv:2608.06987. — URL: #link("https://arxiv.org/abs/2608.06987") (дата обращения: 18.11.2026).]),
  (id: "vtgan", body: [Maiyza A. I., Hassan H. A., Sheta W. M., Banawan K., Korany N. O. VTGAN based proactive VM consolidation in cloud data centers using value and trend approaches #text("//") Scientific Reports. — 2025. — Vol. 15. — Article 20133. — DOI: #link("https://doi.org/10.1038/s41598-025-04757-z") (дата обращения: 17.11.2026).]),
  (id: "yuan", body: [Yuan H., Liao S. A Time Series-Based Approach to Elastic Kubernetes Scaling #text("//") Electronics. — 2024. — Vol. 13, no. 2. — Article 285. — DOI: #link("https://doi.org/10.3390/electronics13020285") (дата обращения: 18.11.2026).]),
  (id: "zeitouni", body: [Zeitouni M. S., Brito O., Rocha M., Pereira T. E., Gomes G. On the Efficiency and Disruption Trade-Offs of Kubernetes Packing Heuristics #text("//") Proceedings of the 17th ACM/SPEC International Conference on Performance Engineering. — 2026. — DOI: #link("https://dl.acm.org/doi/10.1145/3777884.3796987", "10.1145/3777884.3796987") (дата обращения: 18.11.2026).])
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

