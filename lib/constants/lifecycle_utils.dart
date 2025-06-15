class LifecycleUtils {
  final String image;
  final String title;
  final String subtitle;
  LifecycleUtils({
    required this.image,
    required this.title,
    required this.subtitle,
  });
}

List<LifecycleUtils> lifecycleUtilsVar = [
  LifecycleUtils(
    image: "assets/lifecycle/location.png",
    title: "Customer Visit OurStore",
    subtitle:
        "The customer visits apartner store with theirold device to trade it inand upgrade to a newsmartphone.",
  ),
  LifecycleUtils(
    image: "assets/lifecycle/rocket.png",
    title: "Initiate Trade In",
    subtitle:
        "The store agent opensthe Apex Value PoSPortal and provides thecustomer with a tokento download the ApexValue Diagnose App.",
  ),
  LifecycleUtils(
    image: "assets/lifecycle/diagnosis.png",
    title: "Device Diagnosis",
    subtitle:
        "The customer uses theapp to check theirdevice's condition,which generates areport on itsfunctionality andphysical state",
  ),
  LifecycleUtils(
    image: "assets/lifecycle/quotation.png",
    title: "Instant Quotation",
    subtitle:
        "Based on the diagnosis, multiple buyer quotes are considered, and the system automatically selects the highest offer for that device.The store agent shares the quotation with the customer, who decides whether to proceed.",
  ),
  LifecycleUtils(
    image: "assets/lifecycle/transfer.png",
    title: "Finalize Trade In",
    subtitle:
        "The customer visits a partner store with their old device to trade it in and upgrade to a new smartphone.",
  ),
  LifecycleUtils(
    image: "assets/lifecycle/payment.png",
    title: "Payment Verification",
    subtitle:
        "The superadmin verifies the buyer's payment.If the payment is successful, the transaction is marked as complete.In case of disputes, the superadmin mediates to resolve the issue.",
  ),
  LifecycleUtils(
    image: "assets/lifecycle/confirmation.png",
    title: "Buyer Device Confirmation",
    subtitle:
        "The buyer receives the device and marks it as received on the system If the device condition matches the agreed terms, the buyer initiates the payment.In case of discrepancies, the buyer can raise a dispute.",
  ),
  LifecycleUtils(
    image: "assets/lifecycle/delivery.png",
    title: "Device Ownership & Shipment",
    subtitle:
        "Once the customer’s old device is traded in, it is assigned to the buyer offering the highest price.The device is packaged and shipped to the buyer.",
  ),
  LifecycleUtils(
    image: "assets/lifecycle/buying.png",
    title: "Buyer Price Bidding",
    subtitle:
        "Multiple buyers upload their desired purchase prices for specific device models on the platform.The system dynamically selects the highest bid for each device model.",
  ),
];
