module solvbtc::minter_manager {

    use sui::table;
    use sui::coin::{Coin, TreasuryCap};

    public struct MINTER_MANAGER has drop {}

    public struct TreasuryCapManager<phantom CoinType> has key, store {
        id: UID,
        superAdmin: address,
        treasuryCap: TreasuryCap<CoinType>,
        revokedMinters: table::Table<ID, bool>,
    }

    public struct MinterCap<phantom CoinType> has key, store {
        id: UID,
        managerId: ID,
    }

    fun init(witness: MINTER_MANAGER, ctx: &mut TxContext) {
        abort 0 
    }

    public entry fun setupTreasuryCapManager<CoinType>(
        superAdmin: address,
        treasuryCap: TreasuryCap<CoinType>,
        ctx: &mut TxContext,
    ) {
        abort 0 
    }

    public entry fun destroyTreasuryCapManager<CoinType>(
        treasuryCapManager: TreasuryCapManager<CoinType>,
        ctx: &mut TxContext,
    ) {       
        abort 0 
    }

    public entry fun issueMinterCap<CoinType>(
        recipient: address,
        treasuryCapManager: &TreasuryCapManager<CoinType>,
        ctx: &mut TxContext,
    ) { 
        abort 0 
    }

    public entry fun revokeMinterCap<CoinType>(
        minterCap: &MinterCap<CoinType>,
        treasuryCapManager: &mut TreasuryCapManager<CoinType>,
        ctx: &mut TxContext,
    ) {
        abort 0 
    }

    public entry fun mint<CoinType>(
        amount: u64,
        recipient: address,
        minterCap: &mut MinterCap<CoinType>,
        treasuryCapManager: &mut TreasuryCapManager<CoinType>,
        ctx: &mut TxContext,
    ) { 
        abort 0 
    }

    public entry fun burn<CoinType>(
        amount: u64,
        coinList: vector<Coin<CoinType>>,
        minterCap: &mut MinterCap<CoinType>,
        treasuryCapManager: &mut TreasuryCapManager<CoinType>,
        ctx: &mut TxContext,
    ) { 
        abort 0 
    }
}