class Resource {
  final String name;
  final int quantity;

  Resource({
    required this.name,
    required this.quantity,
  });
}

final List<Resource> resources = [
  Resource(name: 'Oxygen Level', quantity: 75),
  Resource(name: 'Food Supply', quantity: 30),
  Resource(name: 'Water Reserve', quantity: 0),
];

class ResourceLog {
  final String timestamp;
  final double value;

  ResourceLog({required this.timestamp, required this.value});
}

final List<List<ResourceLog>> resourceLogs = [
  [
    ResourceLog(timestamp: '2023-03-01 08:00 AM', value: 75),
    ResourceLog(timestamp: '2023-03-01 10:00 AM', value: 72),
    ResourceLog(timestamp: '2023-03-01 12:00 PM', value: 69),
    ResourceLog(timestamp: '2023-03-01 02:00 PM', value: 67),
    ResourceLog(timestamp: '2023-03-01 04:00 PM', value: 65),
    ResourceLog(timestamp: '2023-03-01 06:00 PM', value: 63),
    ResourceLog(timestamp: '2023-03-01 08:00 PM', value: 60),
    ResourceLog(timestamp: '2023-03-01 10:00 PM', value: 58),
    ResourceLog(timestamp: '2023-03-01 12:00 AM', value: 55),
    ResourceLog(timestamp: '2023-03-01 02:00 AM', value: 52),
  ],
  [
    ResourceLog(timestamp: '2023-03-01 08:00 AM', value: 30),
    ResourceLog(timestamp: '2023-03-01 10:00 AM', value: 28),
    ResourceLog(timestamp: '2023-03-01 12:00 PM', value: 26),
    ResourceLog(timestamp: '2023-03-01 02:00 PM', value: 24),
    ResourceLog(timestamp: '2023-03-01 04:00 PM', value: 22),
    ResourceLog(timestamp: '2023-03-01 06:00 PM', value: 20),
    ResourceLog(timestamp: '2023-03-01 08:00 PM', value: 18),
    ResourceLog(timestamp: '2023-03-01 10:00 PM', value: 16),
    ResourceLog(timestamp: '2023-03-01 12:00 AM', value: 14),
    ResourceLog(timestamp: '2023-03-01 02:00 AM', value: 12),
  ],
  [
    ResourceLog(timestamp: '2023-03-01 08:00 AM', value: 50),
    ResourceLog(timestamp: '2023-03-01 10:00 AM', value: 48),
    ResourceLog(timestamp: '2023-03-01 12:00 PM', value: 45),
    ResourceLog(timestamp: '2023-03-01 02:00 PM', value: 42),
    ResourceLog(timestamp: '2023-03-01 04:00 PM', value: 39),
    ResourceLog(timestamp: '2023-03-01 06:00 PM', value: 37),
    ResourceLog(timestamp: '2023-03-01 08:00 PM', value: 35),
    ResourceLog(timestamp: '2023-03-01 10:00 PM', value: 32),
    ResourceLog(timestamp: '2023-03-01 12:00 AM', value: 29),
    ResourceLog(timestamp: '2023-03-01 02:00 AM', value: 27),
  ],
];
