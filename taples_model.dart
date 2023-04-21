class TableModel {
  TableModel({
    this.id,
    this.dealerType,
    this.dealerNo,
    this.accountNo,
    this.name,
    this.address1,
    this.address2,
    this.emailAddress,
    this.homePhone,
    this.workLocation,
    this.faxphone,
    this.solarPhone,
    this.branch,
    this.balanceType,
    this.currency,
    this.maxCreditBalance,
    this.balance,
    this.workVatNo,
    this.salesDiscount,
    this.sellingPriceCat,
    this.salesmanAccountNo,
    this.www,
    this.invoicesDuePeriod,
    this.approvedFlag,
    this.approvedReason,
    this.itFileNo,
    this.vatRate,
    this.discountStartingPoint,
    this.class1Id,
    this.class2Id,
    this.active,
    this.vatFlag,
    this.remark,
    this.manager,
    this.englishName,
    this.taxdepartment,
    this.isMobileAppUser,
    this.password,
    this.lat,
    this.long,
    this.workPhone,
  });

  final int? id;
  final int? dealerType;
  final int? dealerNo;
  final dynamic accountNo;
  final String? name;
  final String? address1;
  final String? address2;
  final String? emailAddress;
  final String? homePhone;
  final dynamic workLocation;
  final dynamic faxphone;
  final String? solarPhone;
  final int? branch;
  final int? balanceType;
  final int? currency;
  final dynamic? maxCreditBalance;
  final int? balance;
  final dynamic workVatNo;
  final dynamic salesDiscount;
  final int? sellingPriceCat;
  final int? salesmanAccountNo;
  final String? www;
  final String? invoicesDuePeriod;
  final dynamic approvedFlag;
  final String? approvedReason;
  final String? itFileNo;
  final dynamic vatRate;
  final dynamic discountStartingPoint;
  final dynamic class1Id;
  final dynamic class2Id;
  final bool? active;
  final bool? vatFlag;
  final String? remark;
  final dynamic manager;
  final String? englishName;
  final dynamic taxdepartment;
  final dynamic isMobileAppUser;
  final dynamic password;
  final dynamic lat;
  final dynamic long;
  final String? workPhone;

  factory TableModel.fromJson(Map<String, dynamic> json) => TableModel(
        id: json["id"],
        dealerType: json["dealerType"],
        dealerNo: json["dealerNo"],
        accountNo: json["accountNo"],
        name: json["name"],
        address1: json["address1"],
        address2: json["address2"],
        emailAddress: json["emailAddress"],
        homePhone: json["homePhone"],
        workLocation: json["workLocation"],
        faxphone: json["faxphone"],
        solarPhone: json["solarPhone"],
        branch: json["branch"],
        balanceType: json["balanceType"],
        currency: json["currency"],
        maxCreditBalance: json["maxCreditBalance"],
        balance: json["balance"],
        workVatNo: json["workVATNo"],
        salesDiscount: json["salesDiscount"],
        sellingPriceCat: json["sellingPriceCat"],
        salesmanAccountNo: json["salesmanAccountNo"],
        www: json["www"],
        invoicesDuePeriod: json["invoicesDuePeriod"],
        approvedFlag: json["approvedFlag"],
        approvedReason: json["approvedReason"],
        itFileNo: json["itFileNo"],
        vatRate: json["vatRate"],
        discountStartingPoint: json["discountStartingPoint"],
        class1Id: json["class1ID"],
        class2Id: json["class2ID"],
        active: json["active"],
        vatFlag: json["vatFlag"],
        remark: json["remark"],
        manager: json["manager"],
        englishName: json["englishName"],
        taxdepartment: json["taxdepartment"],
        isMobileAppUser: json["isMobileAppUser"],
        password: json["password"],
        lat: json["lat"],
        long: json["long"],
        workPhone: json["workPhone"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "dealerType": dealerType,
        "dealerNo": dealerNo,
        "accountNo": accountNo,
        "name": name,
        "address1": address1,
        "address2": address2,
        "emailAddress": emailAddress,
        "homePhone": homePhone,
        "workLocation": workLocation,
        "faxphone": faxphone,
        "solarPhone": solarPhone,
        "branch": branch,
        "balanceType": balanceType,
        "currency": currency,
        "maxCreditBalance": maxCreditBalance,
        "balance": balance,
        "workVATNo": workVatNo,
        "salesDiscount": salesDiscount,
        "sellingPriceCat": sellingPriceCat,
        "salesmanAccountNo": salesmanAccountNo,
        "www": www,
        "invoicesDuePeriod": invoicesDuePeriod,
        "approvedFlag": approvedFlag,
        "approvedReason": approvedReason,
        "itFileNo": itFileNo,
        "vatRate": vatRate,
        "discountStartingPoint": discountStartingPoint,
        "class1ID": class1Id,
        "class2ID": class2Id,
        "active": active,
        "vatFlag": vatFlag,
        "remark": remark,
        "manager": manager,
        "englishName": englishName,
        "taxdepartment": taxdepartment,
        "isMobileAppUser": isMobileAppUser,
        "password": password,
        "lat": lat,
        "long": long,
        "workPhone": workPhone,
      };
}
