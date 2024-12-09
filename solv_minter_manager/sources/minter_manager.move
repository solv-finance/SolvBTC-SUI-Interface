module solv_minter_manager::minter_manager {

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

    fun init(_witness: MINTER_MANAGER, _ctx: &mut TxContext) {
        abort 0 
    }

    public entry fun setupTreasuryCapManager<CoinType>(
        _superAdmin: address,
        _treasuryCap: TreasuryCap<CoinType>,
        _ctx: &mut TxContext,
    ) {
        abort 0 
    }

    public entry fun destroyTreasuryCapManager<CoinType>(
        _treasuryCapManager: TreasuryCapManager<CoinType>,
        _ctx: &mut TxContext,
    ) {       
        abort 0 
    }

    public entry fun issueMinterCap<CoinType>(
        _recipient: address,
        _treasuryCapManager: &TreasuryCapManager<CoinType>,
        _ctx: &mut TxContext,
    ) { 
        abort 0 
    }

    public entry fun revokeMinterCap<CoinType>(
        _minterCap: &MinterCap<CoinType>,
        _treasuryCapManager: &mut TreasuryCapManager<CoinType>,
        _ctx: &mut TxContext,
    ) {
        abort 0 
    }

    public entry fun mint<CoinType>(
        _amount: u64,
        _recipient: address,
        _minterCap: &mut MinterCap<CoinType>,
        _treasuryCapManager: &mut TreasuryCapManager<CoinType>,
        _ctx: &mut TxContext,
    ) { 
        abort 0 
    }

    public entry fun burn<CoinType>(
        _amount: u64,
        _coinList: vector<Coin<CoinType>>,
        _minterCap: &mut MinterCap<CoinType>,
        _treasuryCapManager: &mut TreasuryCapManager<CoinType>,
        _ctx: &mut TxContext,
    ) { 
        abort 0 
    }
}
