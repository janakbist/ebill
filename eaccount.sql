-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 17, 2020 at 12:01 PM
-- Server version: 5.7.19
-- PHP Version: 7.1.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank_cashes`
--

CREATE TABLE `bank_cashes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` longtext COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `create_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `update_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `income_expense_groups`
--

CREATE TABLE `income_expense_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` bigint(20) NOT NULL,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `income_expense_heads`
--

CREATE TABLE `income_expense_heads` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `income_expense_type_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `income_expense_group_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(4) NOT NULL,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `income_expense_types`
--

CREATE TABLE `income_expense_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` bigint(20) NOT NULL,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `income_expense_types`
--

INSERT INTO `income_expense_types` (`id`, `name`, `code`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Inventories', 101, 'E-Accounts system', NULL, NULL, '2020-01-17 11:59:29', '2020-01-17 11:59:29', NULL),
(2, 'Direct Material', 102, 'E-Accounts system', NULL, NULL, '2020-01-17 11:59:29', '2020-01-17 11:59:29', NULL),
(3, 'Advance, Deposit & Receivables', 103, 'E-Accounts system', NULL, NULL, '2020-01-17 11:59:29', '2020-01-17 11:59:29', NULL),
(4, 'Direct Labour', 104, 'E-Accounts system', NULL, NULL, '2020-01-17 11:59:29', '2020-01-17 11:59:29', NULL),
(5, 'Revenue', 105, 'E-Accounts system', NULL, NULL, '2020-01-17 11:59:29', '2020-01-17 11:59:29', NULL),
(6, 'Indirect Income', 106, 'E-Accounts system', NULL, NULL, '2020-01-17 11:59:29', '2020-01-17 11:59:29', NULL),
(7, 'Account Payable', 107, 'E-Accounts system', NULL, NULL, '2020-01-17 11:59:29', '2020-01-17 11:59:29', NULL),
(8, 'Paid Up Capital', 108, 'E-Accounts system', NULL, NULL, '2020-01-17 11:59:29', '2020-01-17 11:59:29', NULL),
(9, 'Long Term Loan', 109, 'E-Accounts system', NULL, NULL, '2020-01-17 11:59:29', '2020-01-17 11:59:29', NULL),
(10, 'Short Term Loan', 110, 'E-Accounts system', NULL, NULL, '2020-01-17 11:59:29', '2020-01-17 11:59:29', NULL),
(11, 'Other Payable', 111, 'E-Accounts system', NULL, NULL, '2020-01-17 11:59:29', '2020-01-17 11:59:29', NULL),
(12, 'Advance Against Sales', 112, 'E-Accounts system', NULL, NULL, '2020-01-17 11:59:29', '2020-01-17 11:59:29', NULL),
(13, 'Share Money Deposit', 113, 'E-Accounts system', NULL, NULL, '2020-01-17 11:59:29', '2020-01-17 11:59:29', NULL),
(14, 'Other Direct Expenses', 114, 'E-Accounts system', NULL, NULL, '2020-01-17 11:59:29', '2020-01-17 11:59:29', NULL),
(15, 'Other Expense', 115, 'E-Accounts system', NULL, NULL, '2020-01-17 11:59:29', '2020-01-17 11:59:29', NULL),
(16, 'Administrative Expense', 116, 'E-Accounts system', NULL, NULL, '2020-01-17 11:59:29', '2020-01-17 11:59:29', NULL),
(17, 'Financial Expense', 117, 'E-Accounts system', NULL, NULL, '2020-01-17 11:59:29', '2020-01-17 11:59:29', NULL),
(18, 'Provision & Tax Paid', 118, 'E-Accounts system', NULL, NULL, '2020-01-17 11:59:29', '2020-01-17 11:59:29', NULL),
(19, 'Property, Plant & Equipment', 119, 'E-Accounts system', NULL, NULL, '2020-01-17 11:59:29', '2020-01-17 11:59:29', NULL),
(20, 'Advance Receive from Investor', 120, 'E-Accounts system', NULL, NULL, '2020-01-17 11:59:29', '2020-01-17 11:59:29', NULL),
(21, 'Preliminary Expense', 121, 'E-Accounts system', NULL, NULL, '2020-01-17 11:59:29', '2020-01-17 11:59:29', NULL),
(22, 'Dividend', 122, 'E-Accounts system', NULL, NULL, '2020-01-17 11:59:29', '2020-01-17 11:59:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_03_17_115307_create_profiles_table', 1),
(4, '2019_03_27_160236_create_settings_table', 1),
(5, '2019_11_11_051203_create_role_manages_table', 1),
(6, '2019_11_21_044659_create_branches_table', 1),
(7, '2019_11_22_063449_create_income_expense_types_table', 1),
(8, '2019_11_22_102644_create_income_expense_heads_table', 1),
(9, '2019_11_23_182134_create_bank_cashes_table', 1),
(10, '2019_11_24_062835_create_transactions_table', 1),
(11, '2019_12_10_121535_transaction_income_expense_head_ids_view', 1),
(12, '2019_12_11_001831_transaction_bank_cash_view', 1),
(13, '2019_12_11_151917_transaction_branch_view', 1),
(14, '2019_12_22_123713_create_income_expense_groups_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NID` bigint(20) UNSIGNED DEFAULT NULL,
  `permanent_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `present_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `education` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `first_name`, `last_name`, `gender`, `designation`, `phone_number`, `NID`, `permanent_address`, `present_address`, `avatar`, `education`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'Super', 'Admin', 1, 'PHP Developer', '+8801738578683', 199412478654477, 'PS: Raygonj, District: Sirajgonj', 'Dhaka,Bangladesh', 'upload/avatar/avatar.png', 'B.S. in Computer Science from the University of Primeasia University', '', '2020-01-17 11:59:29', '2020-01-17 11:59:29');

-- --------------------------------------------------------

--
-- Table structure for table `role_manages`
--

CREATE TABLE `role_manages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `update_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_manages`
--

INSERT INTO `role_manages` (`id`, `name`, `content`, `create_by`, `update_by`, `delete_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Super Admin', '{\"User\":[\"User \",1,1,1,1,1,1,1,1,1],\"RoleManager\":[\"Role Manager\",1,1,1,1,1,1,1,1,1],\"Settings\":[\"Settings\",1,1,1,1,1,1,1,1,1],\"Branch\":[\"Branch\",1,1,1,1,1,1,1,1,1],\"LedgerType\":[\"Ledger Type\",1,1,1,1,1,1,1,1,1],\"LedgerGroup\":[\"Ledger Group\",1,1,1,1,1,1,1,1,1],\"LedgerName\":[\"Ledger Name\",1,1,1,1,1,1,1,1,1],\"BankCash\":[\"Bank Cash\",1,1,1,1,1,1,1,1,1],\"InitialIncomeExpenseHeadBalance\":[\"Initial Income Expense Head Balance\",1,1,1,1,1,1,1,1,1],\"InitialBankCashBalance\":[\"Initial Bank Cash Balance\",1,1,1,1,1,1,1,1,1],\"DrVoucher\":[\"Dr Voucher\",1,1,1,1,1,1,1,1,1],\"CrVoucher\":[\"Cr Voucher\",1,1,1,1,1,1,1,1,1],\"JnlVoucher\":[\"Jnl Voucher\",1,1,1,1,1,1,1,1,1],\"ContraVoucher\":[\"Contra Voucher\",1,1,1,1,1,1,1,1,1],\"Ledger\":[\"Ledger\",1,1,1,1,1,1,1,1,1],\"TrialBalance\":[\"Trial Balance\",1,1,1,1,1,1,1,1,1],\"CostOfRevenue\":[\"Cost Of Revenue\",1,1,1,1,1,1,1,1,1],\"ProfitOrLossAccount\":[\"Profit Or Loss Account\",1,1,1,1,1,1,1,1,1],\"RetainedEarning\":[\"Retained Earning\",1,1,1,1,1,1,1,1,1],\"FixedAssetsSchedule\":[\"Fixed Assets Schedule\",1,1,1,1,1,1,1,1,1],\"StatementOfFinancialPosition\":[\"Statement Of Financial Position\",1,1,1,1,1,1,1,1,1],\"CashFlow\":[\"Cash Flow\",1,1,1,1,1,1,1,1,1],\"ReceiveAndPayment\":[\"Receive And Payment\",1,1,1,1,1,1,1,1,1],\"Notes\":[\"Notes\",1,1,1,1,1,1,1,1,1],\"GeneralBranch\":[\"General Branch Report\",1,1,1,1,1,1,1,1,1],\"GeneralLedger\":[\"General Ledger Report\",1,1,1,1,1,1,1,1,1],\"GeneralBankCash\":[\"General Bank Cash Report\",1,1,1,1,1,1,1,1,1],\"GeneralVoucher\":[\"General Voucher Report\",1,1,1,1,1,1,1,1,1]}', 'admin@gmail.com', NULL, NULL, '2020-01-17 11:59:29', '2020-01-17 11:59:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `settings_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `settings_name`, `content`, `created_at`, `updated_at`) VALUES
(1, 'General Settings', '{\"company_name\":\"E-Accounts\",\"contract_person\":\"+8801738578683\",\"email\":\"mahmud2074office@gmail.com\",\"phone\":\"+8801521497833\",\"address_1\":\"Wakil Tower [Level 6] Ta 131 Culsan-Badda Link Road Gulsan 1 Dhaka 1212 Bangladesh\",\"address_2\":null,\"city\":\"Dhaka\",\"state\":\"Gulsan 1\",\"zip_code\":\"1212\",\"company_logo\":\"upload\\/company-logo\\/e.png\"}', '2020-01-17 11:59:29', '2020-01-17 11:59:29'),
(2, 'System Settings', '{\"date_format\":\"M d, Y\",\"timezone\":\"Asia\\/Dhaka\",\"currency_code\":\"BDT\",\"currency_symbol\":\"\\u09f3\",\"is_code\":\"code\",\"currency_position\":\"Suffix\",\"fixed_asset_schedule_starting_date\":\"2000-01-01\"}', '2020-01-17 11:59:29', '2020-01-17 11:59:29');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `voucher_no` bigint(20) UNSIGNED NOT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `cheque_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `income_expense_head_id` bigint(20) UNSIGNED DEFAULT NULL,
  `bank_cash_id` bigint(20) UNSIGNED DEFAULT NULL,
  `voucher_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `voucher_date` date NOT NULL,
  `dr` bigint(20) DEFAULT NULL,
  `cr` bigint(20) DEFAULT NULL,
  `particulars` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `transaction_bank_cash_view`
-- (See below for the actual view)
--
CREATE TABLE `transaction_bank_cash_view` (
`bank_cash_id` bigint(20) unsigned
,`name` varchar(191)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `transaction_branch_view`
-- (See below for the actual view)
--
CREATE TABLE `transaction_branch_view` (
`branch_id` bigint(20) unsigned
,`name` varchar(191)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `transaction_income_expense_head_ids_view`
-- (See below for the actual view)
--
CREATE TABLE `transaction_income_expense_head_ids_view` (
`income_expense_head_id` bigint(20) unsigned
,`income_expense_head_name` varchar(191)
,`type` tinyint(4)
);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_manage_id` int(11) NOT NULL DEFAULT '5',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `update_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role_manage_id`, `email_verified_at`, `password`, `create_by`, `update_by`, `delete_by`, `deleted_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@eaccount.xyz', 1, NULL, '$2y$10$f1OGFwkEzJd51EohIKX4ducJ1BhagfrNGxR17qoTrfAfdOSpu2YS6', 'System', NULL, NULL, NULL, NULL, '2020-01-17 11:59:29', '2020-01-17 11:59:29');

-- --------------------------------------------------------

--
-- Structure for view `transaction_bank_cash_view`
--
DROP TABLE IF EXISTS `transaction_bank_cash_view`;

CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `transaction_bank_cash_view`  AS  select distinct `transactions`.`bank_cash_id` AS `bank_cash_id`,`bank_cashes`.`name` AS `name` from (`transactions` join `bank_cashes` on((`transactions`.`bank_cash_id` = `bank_cashes`.`id`))) where ((`transactions`.`bank_cash_id` is not null) and isnull(`transactions`.`deleted_at`)) order by `transactions`.`bank_cash_id` ;

-- --------------------------------------------------------

--
-- Structure for view `transaction_branch_view`
--
DROP TABLE IF EXISTS `transaction_branch_view`;

CREATE ALGORITHM=UNDEFINED  SQL SECURITY DEFINER VIEW `transaction_branch_view`  AS  select distinct `transactions`.`branch_id` AS `branch_id`,`branches`.`name` AS `name` from (`transactions` join `branches` on((`transactions`.`branch_id` = `branches`.`id`))) where ((`transactions`.`branch_id` is not null) and isnull(`transactions`.`deleted_at`)) order by `transactions`.`branch_id` ;

-- --------------------------------------------------------

--
-- Structure for view `transaction_income_expense_head_ids_view`
--
DROP TABLE IF EXISTS `transaction_income_expense_head_ids_view`;

CREATE ALGORITHM=UNDEFINED  SQL SECURITY DEFINER VIEW `transaction_income_expense_head_ids_view`  AS  select distinct `transactions`.`income_expense_head_id` AS `income_expense_head_id`,`income_expense_heads`.`name` AS `income_expense_head_name`,`income_expense_heads`.`type` AS `type` from (`transactions` join `income_expense_heads` on((`transactions`.`income_expense_head_id` = `income_expense_heads`.`id`))) where ((`transactions`.`income_expense_head_id` is not null) and isnull(`transactions`.`deleted_at`)) order by `transactions`.`income_expense_head_id` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank_cashes`
--
ALTER TABLE `bank_cashes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bank_cashes_name_unique` (`name`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `branches_name_unique` (`name`);

--
-- Indexes for table `income_expense_groups`
--
ALTER TABLE `income_expense_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `income_expense_groups_name_unique` (`name`),
  ADD UNIQUE KEY `income_expense_groups_code_unique` (`code`);

--
-- Indexes for table `income_expense_heads`
--
ALTER TABLE `income_expense_heads`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `income_expense_heads_name_unique` (`name`);

--
-- Indexes for table `income_expense_types`
--
ALTER TABLE `income_expense_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `income_expense_types_name_unique` (`name`),
  ADD UNIQUE KEY `income_expense_types_code_unique` (`code`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_manages`
--
ALTER TABLE `role_manages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `role_manages_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bank_cashes`
--
ALTER TABLE `bank_cashes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `income_expense_groups`
--
ALTER TABLE `income_expense_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `income_expense_heads`
--
ALTER TABLE `income_expense_heads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `income_expense_types`
--
ALTER TABLE `income_expense_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `role_manages`
--
ALTER TABLE `role_manages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
